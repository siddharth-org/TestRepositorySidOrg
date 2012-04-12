public class SelectCheckboxSampleCtl {
	
	String[] countries = new String[]{};

    public PageReference test() {
        return null;
    }

    public List<SelectOption> getItems() {
        List<SelectOption> options = new List<SelectOption>();
        options.add(new SelectOption('Sample1','Sample1'));
        options.add(new SelectOption('Sample2','Sample2'));
        options.add(new SelectOption('Sample3','Sample3'));
        options.add(new SelectOption('Sample4','Sample4'));
        options.add(new SelectOption('Sample5','Sample5'));
        options.add(new SelectOption('Sample6','Sample6'));
        options.add(new SelectOption('Sample7','Sample7'));
        options.add(new SelectOption('Sample8','Sample8'));
        options.add(new SelectOption('Sample9','Sample9'));
        options.add(new SelectOption('Sample10','Sample10'));
        options.add(new SelectOption('Sample11','Sample11'));
        options.add(new SelectOption('Sample12','Sample12'));
        options.add(new SelectOption('Sample13','Sample13'));
        options.add(new SelectOption('Sample14','Sample14'));
        options.add(new SelectOption('Sample15','Sample15'));
        options.add(new SelectOption('Sample16','Sample16'));
        options.add(new SelectOption('Sample17','Sample17'));
        options.add(new SelectOption('Sample18','Sample18'));
        options.add(new SelectOption('Sample19','Sample19'));
        options.add(new SelectOption('Sample20','Sample20'));
        options.add(new SelectOption('Sample21','Sample22'));
        options.add(new SelectOption('Sample23','Sample24'));
        options.add(new SelectOption('Sample25','Sample25'));
        options.add(new SelectOption('Sample26','Sample26'));
        options.add(new SelectOption('Sample27','Sample27'));
        options.add(new SelectOption('Sample28','Sample28'));
        options.add(new SelectOption('Sample29','Sample29'));
        options.add(new SelectOption('Sample30','Sample30'));
        return options;
    }

    public String[] getCountries() {
        return countries;
    }

    public void setCountries(String[] countries) {
        this.countries = countries;
    }

}